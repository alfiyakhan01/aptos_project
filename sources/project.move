module MyModule::TipJar {

    use aptos_framework::coin;
    use aptos_framework::aptos_coin::{AptosCoin};
    use aptos_framework::signer;

    // Function to allow users to send tips to a specific account
    public fun send_tip(sender: &signer, recipient: address, amount: u64) {
        coin::transfer<AptosCoin>(sender, recipient, amount);
    }

    // Function to check the balance of the recipient (tip jar)
    public fun check_balance(account: address): u64 {
        coin::balance<AptosCoin>(account)
    }
}
