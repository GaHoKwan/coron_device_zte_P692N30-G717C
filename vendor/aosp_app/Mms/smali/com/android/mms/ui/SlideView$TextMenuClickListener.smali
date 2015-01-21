.class final Lcom/android/mms/ui/SlideView$TextMenuClickListener;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SlideView;Lcom/android/mms/ui/SlideView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView$TextMenuClickListener;-><init>(Lcom/android/mms/ui/SlideView;)V

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

    .line 866
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 912
    :goto_0
    :pswitch_0
    return v8

    .line 868
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    const-string v10, "clipboard"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 870
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    move v8, v9

    .line 871
    goto :goto_0

    .line 874
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :pswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 875
    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v12, v8}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v8, v9

    .line 892
    goto :goto_0

    .line 876
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v9, :cond_0

    .line 877
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/CharSequence;

    .line 878
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 879
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v5, v4

    .line 878
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 881
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1500(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b0026

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f0200a0

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v10, Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;-><init>(Lcom/android/mms/ui/SlideView$TextMenuClickListener;)V

    invoke-virtual {v8, v5, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 894
    .end local v4           #i:I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 895
    .local v6, mAddContactIntent:Landroid/content/Intent;
    const-string v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1600(Lcom/android/mms/ui/SlideView;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->addNumberOrEmailtoContact(Ljava/lang/String;ILandroid/app/Activity;)V

    move v8, v9

    .line 897
    goto/16 :goto_0

    .line 901
    .end local v6           #mAddContactIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b0295

    invoke-virtual {v8, v10, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 902
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 903
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f040007

    invoke-virtual {v3, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 904
    .local v7, textEntryView:Landroid/view/View;
    const v8, 0x7f0f0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 905
    .local v1, contentSelector:Landroid/widget/EditText;
    iget-object v8, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    const v8, 0x7f0b00af

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v8, v9

    .line 909
    goto/16 :goto_0

    .line 866
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
