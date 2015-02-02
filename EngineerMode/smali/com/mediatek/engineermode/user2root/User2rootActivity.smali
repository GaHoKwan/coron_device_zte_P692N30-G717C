.class public Lcom/mediatek/engineermode/user2root/User2rootActivity;
.super Landroid/app/Activity;
.source "User2rootActivity.java"


# static fields
.field private static final ADB_ENABLE_GB:Ljava/lang/String; = "persist.service.adb.enable"

.field private static final ADB_ENABLE_ICS:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final ANDROID_BUILD_ICS:I = 0xe

.field private static final ANDROID_BUILD_VERSION:Ljava/lang/String; = "ro.build.version.sdk"

.field private static final ATCI_USERMODE:Ljava/lang/String; = "persist.service.atci.usermode"

.field private static final RO_ALLOW_MOCK_LOCATION:Ljava/lang/String; = "ro.allow.mock.location"

.field private static final RO_DEBUG:Ljava/lang/String; = "ro.debuggable"

.field private static final RO_SECURE:Ljava/lang/String; = "ro.secure"


# instance fields
.field private mRootButton:Landroid/widget/Button;

.field private mRootListener:Landroid/view/View$OnClickListener;

.field private mUserButton:Landroid/widget/Button;

.field private mUserListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lcom/mediatek/engineermode/user2root/User2rootActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity$1;-><init>(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mRootListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/mediatek/engineermode/user2root/User2rootActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity$2;-><init>(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mUserListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->toRoot_ics()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->toRoot_gb()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->toUser_ics()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->toUser_gb()V

    return-void
.end method

.method private toRoot_gb()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "ro.secure"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "ro.allow.mock.location"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "ro.debuggable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 48
    const-string v0, "persist.service.adb.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "Update to Root Success"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void
.end method

.method private toRoot_ics()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "persist.sys.usb.config"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "ro.secure"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "ro.debuggable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "persist.sys.usb.config"

    const-string v2, "mass_storage,adb,acm"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "persist.service.atci.usermode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "start atcid-daemon-u"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    const-string v1, "Update to Root Success"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private toUser_gb()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "ro.allow.mock.location"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "persist.service.adb.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "Update to User Success"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    return-void
.end method

.method private toUser_ics()V
    .locals 3

    .prologue
    .line 78
    const-string v1, "persist.service.atci.usermode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "stop atcid-daemon-u"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    const-string v1, "persist.sys.usb.config"

    const-string v2, "mass_storage"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "Update to User Success"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 90
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0b0471

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mRootButton:Landroid/widget/Button;

    .line 120
    const v0, 0x7f0b0472

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mUserButton:Landroid/widget/Button;

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->findViews()V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->setActionListener()V

    .line 134
    return-void
.end method

.method protected setActionListener()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mRootButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mRootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mUserButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity;->mUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method
