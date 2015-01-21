.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/ListActivity;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecipientListActivity"


# instance fields
.field private mContacts:Lcom/android/mms/data/ContactList;

.field private mConv:Lcom/android/mms/data/Conversation;

.field private mFirstEnterActivity:Z

.field private mHandler:Landroid/os/Handler;

.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mHandler:Landroid/os/Handler;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/RecipientListActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mConv:Lcom/android/mms/data/Conversation;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_0

    .line 68
    const-string v2, "thread_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    .line 72
    :goto_0
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 73
    const-string v2, "RecipientListActivity"

    const-string v3, "No thread_id specified in extras or icicle. Finishing..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    :goto_1
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    goto :goto_0

    .line 78
    :cond_1
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-static {p0, v2, v3, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mConv:Lcom/android/mms/data/Conversation;

    .line 79
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mConv:Lcom/android/mms/data/Conversation;

    if-nez v2, :cond_2

    .line 80
    const-string v2, "RecipientListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No conversation found for threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Finishing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mConv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;

    .line 85
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

    const v4, 0x7f040057

    iget-object v5, p0, Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    .local v1, cnt:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 96
    iput-boolean v7, p0, Lcom/android/mms/ui/RecipientListActivity;->mFirstEnterActivity:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 164
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 121
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 112
    :sswitch_1
    const/4 v0, 0x0

    .line 113
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportTabSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    .end local v0           #settingIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/MessageTabSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #settingIntent:Landroid/content/Intent;
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #settingIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/SettingListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #settingIntent:Landroid/content/Intent;
    goto :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f01c0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 101
    const-string v0, "thread_id"

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 146
    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mFirstEnterActivity:Z

    if-nez v0, :cond_0

    .line 147
    const-string v0, "RecipientListActivity"

    const-string v1, "onStart: Contact reload thread start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mFirstEnterActivity:Z

    .line 158
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 132
    const-string v0, "RecipientListActivity"

    const-string v1, "Contact onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
