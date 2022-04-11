#include <staking.hpp>

ACTION ilya::regstaker(name username, vector<imeta> nftid_staked, string msg)
{
  require_auth(username);
  auto itr_banned = _banned_list.find(username.value);
  check(itr_banned == _banned_list.end(), "You where banned, please see your administrator");
  auto itr = _staker_list.find(username.value);
  if (itr == _staker_list.end())
  {
    itr = _staker_list.emplace(username, [&](auto &row)
                               {
      row.username = username;
      vector<id_type> assetIDNFT = {};
      for (uint8_t i = 0; i < nftid_staked.size(); i++)
      {
        check(nftid_staked[i].collection_name == "ilya", "This NFT not allowed in this game");
        row.nftid_staked.push_back(nftid_staked[i]);
        assetIDNFT.push_back(nftid_staked[i].assets_id);
      }
      stake(username, get_self(), assetIDNFT, "stake");

      time_point_sec current_time = eosio::current_time_point();
      row.last_updated = current_time;
      row.next_run = row.last_updated + period;
      row.isstaked = true; });
    ////// have to call claim functions ////////
  }
  else
  {
    ////// have to call claim functions ////////
  }
}
ACTION ilya::banstaker(name username)
{
  require_auth(username);

  auto itr = _staker_list.find(username.value);
  check(itr != _staker_list.end(), "That user is not a staker");

  // registering user in the banned list
  _banned_list.emplace(get_self(), [&](auto &row)
                       {
  row.username = username;

    // remove staker from staker list without reimbursment
    _staker_list.erase(itr); });
}
void ilya::stake(name username, name receiver, vector<id_type> assets_id, string msg)
{
  require_auth(username);
  if (receiver != get_self() || username == get_self())
    return;
  check(msg.size() <= 256, "msg has more than 256 bytes");
  check(msg == "stake", "Please use \"increment\" to increase your stake or \"start\" to deposit your first stake");

  action(
      permission_level{_self, "active"_n},
      "atomicassets"_n,
      "transfer"_n,
      std::make_tuple(username, get_self(), assets_id, msg))
      .send();
  require_recipient(username);
}

ACTION ilya::unstake(name username, id_type assets_id)
{
  require_auth(username);
  auto itr = _staker_list.find(username.value);
  check(itr != _staker_list.end(), "Your are not a staker, please register first");
  vector<id_type> total_NFTs = {};
  for (uint8_t i = 0; i < itr->nftid_staked.size(); i++)
  {
    total_NFTs.push_back(itr->nftid_staked[i].assets_id);
  }
  in_contract_transfer(username, total_NFTs, string("Your NFT_staked have been unstaked"));
  _staker_list.erase(itr);
  require_recipient(username);
}
void ilya::sub_balance(name owner, asset value)
{

  account_index from_acnts(_self, owner.value);
  const auto &from = from_acnts.get(value.symbol.code().raw(), "no balance object found");
  check(from.balance.amount >= value.amount, "overdrawn balance");

  if (from.balance.amount == value.amount)
  {
    from_acnts.erase(from);
  }
  else
  {
    from_acnts.modify(from, owner, [&](auto &a)
                      { -a.balance -= value; });
  }
}

void ilya::add_balance(name owner, asset value, name ram_payer)
{

  account_index to_accounts(_self, owner.value);
  auto to = to_accounts.find(value.symbol.code().raw());
  if (to == to_accounts.end())
  {
    to_accounts.emplace(ram_payer, [&](auto &a)
                        { a.balance = value; });
  }
  else
  {
    to_accounts.modify(to, _self, [&](auto &a)
                       { a.balance += value; });
  }
}
void ilya::in_contract_transfer(name recipient, vector<id_type> assets_id, string msg)
{
  action(
      permission_level{_self, "active"_n},
      "atomicassets"_n,
      "transfer"_n,
      std::make_tuple(get_self(), recipient, assets_id, msg))
      .send();
}

eosio::asset ilya::getReward(name username, string selectLand)
{
  require_auth(get_self());
  asset reward;
  return reward;
}
ACTION ilya::claim(name username, string memo)
{
  require_auth(username);
  asset claim_amount;
}
EOSIO_DISPATCH(ilya, (regstaker))
