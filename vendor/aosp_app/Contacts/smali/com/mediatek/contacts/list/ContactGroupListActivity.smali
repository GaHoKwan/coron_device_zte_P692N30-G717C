.class public Lcom/mediatek/contacts/list/ContactGroupListActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactGroupListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/mediatek/contacts/list/ContactGroupListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/ContactGroupListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 24
    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 28
    const v4, 0x7f0c00b5

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 30
    :cond_0
    const v4, 0x7f040034

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    const v4, 0x7f0700ef

    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/mediatek/contacts/list/ContactGroupListFragment;

    .line 33
    .local v3, fragment:Lcom/mediatek/contacts/list/ContactGroupListFragment;
    const v4, 0x7f0700ed

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 34
    .local v2, btnOk:Landroid/widget/Button;
    new-instance v4, Lcom/mediatek/contacts/list/ContactGroupListActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/contacts/list/ContactGroupListActivity$1;-><init>(Lcom/mediatek/contacts/list/ContactGroupListActivity;Lcom/mediatek/contacts/list/ContactGroupListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    .local v1, btnCancel:Landroid/widget/Button;
    new-instance v4, Lcom/mediatek/contacts/list/ContactGroupListActivity$2;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/list/ContactGroupListActivity$2;-><init>(Lcom/mediatek/contacts/list/ContactGroupListActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
