class AddConfirmableToDevise < ActiveRecord::Migration
  # Note: You can't use change, as User.update_all will fail in the down migration
  def up






  	#TOUTES CES PUTAINS DE LIGNES EN DESSOUS FOUTAIENT LA MERDE POUR
  	#DEVISE ELLES ETAIENT EN CONFLI AVEC LE MIGRATE_ADD_DEVISE_TO_PERSONNES.rb


    #add_column :personnes, :confirmed_at, :datetime
    #add_column :personnes, :confirmation_sent_at, :datetime
    # add_column :personnes, :unconfirmed_email, :string # Only if using reconfirmable
    #add_index :personnes, :confirmation_token, unique: true
    # User.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # personnes as confirmed, do the following
    #execute("UPDATE personnes SET confirmed_at = NOW()")
    # All existing user accounts should be able to log in after this.
    # Remind: Rails using SQLite as default. And SQLite has no such function :NOW.
    # Use :date('now') instead of :NOW when using SQLite.
    # => execute("UPDATE personnes SET confirmed_at = date('now')")
    # Or => User.all.update_all confirmed_at: Time.now







  end

  def down
    remove_columns :personnes, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :personnes, :unconfirmed_email # Only if using reconfirmable
  end
end