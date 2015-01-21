.class Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myRadioButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 631
    .local v8, id:I
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v0

    if-eq v8, v0, :cond_2

    if-ltz v8, :cond_2

    const/4 v0, 0x3

    if-gt v8, v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$100(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 634
    .local v9, lastView:Landroid/widget/ImageView;
    if-eqz v9, :cond_0

    .line 635
    const v0, 0x7f020266

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 637
    :cond_0
    const-string v0, "ModeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageRadio CurrentId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 639
    .local v7, currentView:Landroid/widget/ImageView;
    if-eqz v7, :cond_1

    .line 640
    const v0, 0x7f020267

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #setter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v0, v8}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$302(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)I

    .line 645
    const/4 v6, 0x0

    .line 646
    .local v6, cr:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$500(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->MODE_BASE_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$400(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 648
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 650
    .local v10, mode_id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 655
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$600(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "radio_position"

    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$600(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_mode_id"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$100(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->baseMode:[I
    invoke-static {v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$700(Lcom/zte/heartyservice/power/ModeSettingsFragment;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    new-instance v11, Landroid/content/Intent;

    const-string v0, "zte.com.powermanager.SWITCH_MODE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v11, switchIntent:Landroid/content/Intent;
    const-string v0, "switch_id"

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$100(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    .end local v6           #cr:Landroid/database/Cursor;
    .end local v7           #currentView:Landroid/widget/ImageView;
    .end local v9           #lastView:Landroid/widget/ImageView;
    .end local v10           #mode_id:I
    .end local v11           #switchIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
