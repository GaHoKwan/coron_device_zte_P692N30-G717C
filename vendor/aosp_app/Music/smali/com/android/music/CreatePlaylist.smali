.class public Lcom/android/music/CreatePlaylist;
.super Landroid/app/Activity;
.source "CreatePlaylist.java"


# static fields
.field private static final ALERT_DIALOG_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CreatePlaylist"


# instance fields
.field private mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Lcom/android/music/MusicDialog;

.field private mIntent:Landroid/content/Intent;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPlaylistFlag:Ljava/lang/String;

.field private mPlaylistName:Ljava/lang/String;

.field private mPrompt:Ljava/lang/String;

.field private mSaveButton:Landroid/widget/Button;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectItemId:Ljava/lang/String;

.field private mStartActivityTab:I

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/android/music/CreatePlaylist;->mSelectItemId:Ljava/lang/String;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/CreatePlaylist;->mStartActivityTab:I

    .line 96
    iput-object v1, p0, Lcom/android/music/CreatePlaylist;->mIntent:Landroid/content/Intent;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylistName:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/android/music/CreatePlaylist$1;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$1;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 242
    new-instance v0, Lcom/android/music/CreatePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$2;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 295
    new-instance v0, Lcom/android/music/CreatePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$3;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/CreatePlaylist;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/music/CreatePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSelectItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/CreatePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/music/CreatePlaylist;->mStartActivityTab:I

    return v0
.end method

.method private setSaveButton()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, newText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    if-nez v1, :cond_0

    .line 216
    const-string v1, "CreatePlaylist"

    const-string v2, "setSaveButton with dialog is null return!"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v1}, Lcom/android/music/MusicDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    :cond_2
    :goto_1
    const-string v1, "CreatePlaylist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSaveButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/music/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 107
    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030005

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mView:Landroid/view/View;

    .line 110
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mView:Landroid/view/View;

    const v6, 0x7f0c0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 113
    if-eqz p1, :cond_1

    const-string v5, "defaultname"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, defaultname:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 116
    const v5, 0x7f070015

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, toastShow:Ljava/lang/String;
    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 149
    .end local v4           #toastShow:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 113
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070054

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicUtils;->makePlaylistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_2
    const v5, 0x7f070076

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, promptformat:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mIntent:Landroid/content/Intent;

    .line 136
    if-nez p1, :cond_3

    .line 137
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 144
    const-string v5, "add_to_playlist_item_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mSelectItemId:Ljava/lang/String;

    .line 145
    const-string v5, "start_activity_tab_id"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/CreatePlaylist;->mStartActivityTab:I

    .line 146
    const-string v5, "SAVE_PLAYLIST_FLAG"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;

    .line 147
    const-string v5, "playlist_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylistName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Lcom/android/music/MusicDialog;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/music/CreatePlaylist;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/music/MusicDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    .line 198
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0, v3}, Lcom/android/music/MusicDialog;->setCancelable(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0}, Lcom/android/music/MusicDialog;->setSearchKeyListener()V

    .line 205
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/music/CreatePlaylist;->setSaveButton()V

    .line 175
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 166
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
