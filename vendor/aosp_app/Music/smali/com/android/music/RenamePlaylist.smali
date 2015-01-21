.class public Lcom/android/music/RenamePlaylist;
.super Landroid/app/Activity;
.source "RenamePlaylist.java"


# static fields
.field private static final ALERT_DIALOG_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RenamePlaylist"


# instance fields
.field private final mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Lcom/android/music/MusicDialog;

.field private mExistingId:J

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Ljava/lang/String;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    new-instance v0, Lcom/android/music/RenamePlaylist$1;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$1;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 244
    new-instance v0, Lcom/android/music/RenamePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$2;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 307
    new-instance v0, Lcom/android/music/RenamePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$3;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mExistingId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/music/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 189
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 195
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 200
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v6, 0x0

    .line 203
    :cond_1
    return v7
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 207
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 213
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_1
    return-object v7
.end method

.method private setSaveButton()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, typedname:Ljava/lang/String;
    const-string v3, "RenamePlaylist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSaveButton "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    if-nez v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v3}, Lcom/android/music/MusicDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    invoke-direct {p0, v2}, Lcom/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 176
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v4, 0x7f070057

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iput-wide v0, p0, Lcom/android/music/RenamePlaylist;->mExistingId:J

    goto :goto_0

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/music/RenamePlaylist;->mExistingId:J

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v3, "RenamePlaylist"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 98
    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mView:Landroid/view/View;

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 103
    if-eqz p1, :cond_2

    const-string v3, "rename"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    .line 106
    if-eqz p1, :cond_3

    const-string v3, "existing"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :goto_1
    iput-wide v3, p0, Lcom/android/music/RenamePlaylist;->mExistingId:J

    .line 108
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v3, v4}, Lcom/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_4

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, defaultname:Ljava/lang/String;
    :goto_2
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez v0, :cond_5

    .line 112
    :cond_0
    const-string v3, "RenamePlaylist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 141
    :cond_1
    :goto_3
    return-void

    .line 103
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rename"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "existing"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    goto :goto_2

    .line 118
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, promptformat:Ljava/lang/String;
    :goto_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    if-nez p1, :cond_1

    .line 138
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_3

    .line 121
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v2           #promptformat:Ljava/lang/String;
    :cond_6
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #promptformat:Ljava/lang/String;
    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 290
    const-string v0, "RenamePlaylist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Lcom/android/music/MusicDialog;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/music/RenamePlaylist;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/music/MusicDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    .line 293
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0, v3}, Lcom/android/music/MusicDialog;->setCancelable(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    invoke-virtual {v0}, Lcom/android/music/MusicDialog;->setSearchKeyListener()V

    .line 299
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mDialog:Lcom/android/music/MusicDialog;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    .line 238
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 227
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    const-string v0, "existing"

    iget-wide v1, p0, Lcom/android/music/RenamePlaylist;->mExistingId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    return-void
.end method
