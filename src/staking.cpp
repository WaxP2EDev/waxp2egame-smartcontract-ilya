#include <reaper.hpp>
[[eosio::on_notify("atomicassets::transfer")]] void reaper::regstaker(name from,
     name to,
     vector<uint64_t> asset_ids,
     string memo)

{
  require_auth(from);
  auto itr_banned = _banned_list.find(from.value);
  check(itr_banned == _banned_list.end(), "You where banned, please see your administrator");
  auto itr = _staker_list.find(from.value);
  if (itr == _staker_list.end())
  {
    itr = _staker_list.emplace(from, [&](auto &row)
                               {
      row.username = from;
      // vector<id_type> assetIDNFT = {};
      for (uint8_t i = 0; i < asset_ids.size(); i++)
      {
        // check(nftid_staked[i].collection_name == "", "This NFT not allowed in this game");
        row.nftid_staked.push_back(asset_ids[i]);
        // assetIDNFT.push_back(nftid_staked[i].assets_id);
      }
      // row.nftid_staked = asset_ids;
      time_point_sec current_time = eosio::current_time_point();
      row.last_updated = current_time;
      row.next_run = row.last_updated + period;
      row.isstaked = true; });
    ////// have to call FT or NFT claim functions ////////
  }
  else
  {
    ////// have to call FT or NFT claim functions ////////
  }
}
ACTION reaper::banstaker(name username)
{
  require_auth(username);
  auto itr = _staker_list.find(username.value);
  check(itr != _staker_list.end(), "That user is not a staker");
  _banned_list.emplace(get_self(), [&](auto &row){
    row.username = username;
      _staker_list.erase(itr);
  });
}

ACTION reaper::unstake(name username, string memo)
{
  require_auth(username);
  auto itr = _staker_list.find(username.value);
  check(itr != _staker_list.end(), "Your are not a staker, please register first");
  vector<id_type> total_NFTs = {};
  for (uint8_t i = 0; i < itr->nftid_staked.size(); i++)
  {
    total_NFTs.push_back(itr->nftid_staked[i]);
  }
  in_contract_transfer(username, total_NFTs, string("Your NFT_staked have been unstaked"));
  _staker_list.erase(itr);
  require_recipient(username);
}
ACTION reaper::burn(name username, id_type assets_id, string memo)
{
  require_auth(username);
  check(memo == "burn", "plz insert transaction name");
  check(memo.size() > 256, "wrong message");

  action(
      permission_level{get_self(), "active"_n},
      "atomicassets"_n,
      "burnasset"_n,
      std::make_tuple(username ,assets_id))
      .send();
}
void reaper::in_contract_transfer(name recipient, vector<id_type> assets_id, string msg)
{
  action(
      permission_level{_self, "active"_n},
      "atomicassets"_n,
      "transfer"_n,
      std::make_tuple(get_self(), recipient, assets_id, msg))
      .send();
}

ACTION reaper::claim(name username, string memo)
{
  require_auth(username);
  asset claim_amount;
  static const time_point_sec current_time = eosio::current_time_point();
  for (auto &item : _makeMachine_list)
  {
    for (uint8_t i = 0; i < item.productionMachine.size(); i++)
    {
      if (item.productionMachine[i].next_run < current_time)
      {
        _makeMachine_list.modify(item, _self, [&](auto &a)
                                 {
        a.productionMachine[i].last_updated = a.productionMachine[i].next_run;
        a.productionMachine[i].next_run = a.productionMachine[i].last_updated + a.productionMachine[i].periodTime;
        ATTRIBUTE_MAP immutable_data = {};
        ATTRIBUTE_MAP mutable_data = {};
        vector<asset> tokens_to_back = {};
        rewardNFT(name("authorized_minter"), a.productionMachine[i].collection_name, a.productionMachine[i].schema_name, a.productionMachine[i].template_id, username, immutable_data, mutable_data, tokens_to_back);
                                 });
      }
    }
  }
}
ACTION reaper::regmachine(name username, rewardmachine productMachine, string memo)
{
  require_auth(username);
  time_point_sec current_time = eosio::current_time_point();

  auto itr = _makeMachine_list.find(username.value);
  if (itr == _makeMachine_list.end())
  {
    itr = _makeMachine_list.emplace(username, [&](auto &row)
                                    {
      row.username = username;
      rewardmachine updateMachine;
      updateMachine = productMachine;
      updateMachine.next_run = current_time + productMachine.production_time;
      row.productionMachine.push_back(updateMachine); });
  }
  else
  {
    _makeMachine_list.modify(itr, _self, [&](auto &a)
                             {
      rewardmachine updateMachine;
      updateMachine = productMachine;
      updateMachine.next_run = current_time + productMachine.production_time;
      a.productionMachine.push_back(updateMachine);
      });
  }
}
void reaper::rewardNFT(
    name authorized_minter,
    name collection_name,
    name schema_name,
    int32_t template_id,
    name new_asset_owner,
    ATTRIBUTE_MAP immutable_data,
    ATTRIBUTE_MAP mutable_data,
    vector<asset> tokens_to_back)
{
  require_auth(new_asset_owner);
  action(
      permission_level{get_self(), "active"_n},
      "atomicassets"_n,
      "mintasset"_n,
      std::make_tuple(get_self(), collection_name, schema_name, template_id, new_asset_owner, immutable_data, mutable_data, tokens_to_back))
      .send();
}
EOSIO_DISPATCH(reaper, (regstaker))
