.class final Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/android/mms/ui/MmsPlayerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 733
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 779
    :goto_0
    :pswitch_0
    return v8

    .line 735
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v10, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MmsPlayerActivity;->access$900(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/content/Context;

    const-string v10, "clipboard"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 737
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mCopyText:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1000(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    move v8, v9

    .line 738
    goto :goto_0

    .line 741
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :pswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 742
    iget-object v10, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MmsPlayerActivity;->access$900(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v12, v8}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v8, v9

    .line 758
    goto :goto_0

    .line 743
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v9, :cond_0

    .line 744
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/CharSequence;

    .line 745
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 746
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1100(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v5, v4

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 748
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MmsPlayerActivity;->access$900(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b0026

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f0200a0

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v10, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener$1;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener$1;-><init>(Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;)V

    invoke-virtual {v8, v5, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 761
    .end local v4           #i:I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 762
    .local v6, mAddContactIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v8, v6, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v9

    .line 763
    goto/16 :goto_0

    .line 767
    .end local v6           #mAddContactIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MmsPlayerActivity;->access$900(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b0295

    invoke-virtual {v8, v10, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 769
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 770
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f040007

    invoke-virtual {v3, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 771
    .local v7, textEntryView:Landroid/view/View;
    const v8, 0x7f0f0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 772
    .local v1, contentSelector:Landroid/widget/EditText;
    iget-object v8, p0, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mCopyText:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1000(Lcom/android/mms/ui/MmsPlayerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const v8, 0x7f0b00af

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v8, v9

    .line 776
    goto/16 :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
