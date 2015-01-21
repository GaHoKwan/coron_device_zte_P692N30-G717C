.class public Lcom/android/music/DeleteItems;
.super Landroid/app/Activity;
.source "DeleteItems.java"


# static fields
.field private static final ALERT_DIALOG_KEY:I = 0x1

.field private static final FINISH:I = 0x1

.field private static final PROGRESS_DIALOG_KEY:I = 0x0

.field private static final START_DELETING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeleteItems"


# instance fields
.field private mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogDesc:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mItemList:[J

.field private mScanListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mDialogDesc:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/android/music/DeleteItems$1;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$1;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    new-instance v0, Lcom/android/music/DeleteItems$2;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$2;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/android/music/DeleteItems$4;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$4;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/DeleteItems;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/DeleteItems;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/music/DeleteItems;->doDeleteItems()V

    return-void
.end method

.method private doDeleteItems()V
    .locals 5

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)I

    move-result v0

    .line 216
    .local v0, deleteNum:I
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 217
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 93
    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "delete_desc_string_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "delete_desc_track_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mDialogDesc:Ljava/lang/String;

    .line 100
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    .line 103
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 206
    const-string v2, "DeleteItems"

    const-string v3, "onCreateDialog with undefined id!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-object v1

    .line 172
    :pswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 174
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 177
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 178
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 179
    new-instance v2, Lcom/android/music/DeleteItems$3;

    invoke-direct {v2, p0}, Lcom/android/music/DeleteItems$3;-><init>(Lcom/android/music/DeleteItems;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 193
    .end local v1           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v0, Lcom/android/music/MusicDialog;

    iget-object v2, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/music/MusicDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    .line 194
    .local v0, musicDialog:Lcom/android/music/MusicDialog;
    const v2, 0x7f07001d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 195
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/music/MusicDialog;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/music/MusicDialog;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mDialogDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    invoke-virtual {v0, v4}, Lcom/android/music/MusicDialog;->setCancelable(Z)V

    .line 201
    invoke-virtual {v0}, Lcom/android/music/MusicDialog;->setSearchKeyListener()V

    .line 202
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    move-object v1, v0

    .line 203
    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    return-void
.end method
