.class public Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;
.super Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;
.source "VoiceCommandSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceCommandSelectFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;,
        Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;,
        Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;
    }
.end annotation


# static fields
.field private static final RESULT_LAUNCH_APP:I = 0x3e8

.field private static mCommandVaule:Ljava/lang/String;

.field static sDefaultApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;

.field private mChecked:J

.field private mCommandList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;-><init>()V

    .line 263
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->initDefaultApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-object p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandVaule:Ljava/lang/String;

    return-object p0
.end method

.method private getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .parameter "componentName"

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    .local v1, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 298
    .local v2, name:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v2           #name:Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCommandValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandVaule:Ljava/lang/String;

    return-object v0
.end method

.method private initDefaultApp()V
    .locals 6

    .prologue
    .line 117
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v0, 0x1

    .line 120
    .local v0, addPhoneApps:Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 125
    .local v1, userId:I
    if-eqz v0, :cond_0

    .line 126
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.BootActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.gallery3d"

    const-string v5, "com.android.camera.CameraLauncher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.music"

    const-string v5, "com.android.music.MusicBrowserActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->sDefaultApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.email"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 303
    const-string v0, "VoiceUnlockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceCommandSelect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "VoiceCommandSelectFragment onCreate"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->log(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;-><init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mAdapter:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandVaule:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-wide v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 162
    iput-wide p4, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mChecked:J

    .line 163
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mAdapter:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandList:Landroid/widget/ListView;

    .line 152
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mAdapter:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->mCommandList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void
.end method
