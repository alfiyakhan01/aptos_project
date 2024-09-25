module MyModule::RewardSystem {

    use aptos_framework::coin;
    use aptos_framework::signer;
    use aptos_framework::aptos_coin::{AptosCoin};

    // Function to reward a user with tokens
    public fun reward_user(rewarder: &signer, recipient: address, amount: u64) {
        // Transfer tokens from the rewarder's account to the recipient
        coin::transfer<AptosCoin>(rewarder, recipient, amount);
    }

    // Function to check the token balance of an account
    public fun check_balance(account: address): u64 {
        coin::balance<AptosCoin>(account)
    }
}
