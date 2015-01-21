.class public Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;
.super Lcom/android/contacts/ext/SimServiceExtension;
.source "OP09SimServiceExtension.java"


# static fields
.field public static final EXT_ACCOUNTTYPE_ACCOUNT_NAME_LOCAL_PHONE:Ljava/lang/String; = "Phone"

.field public static final EXT_ACCOUNTTYPE_ACCOUNT_TYPE_LOCAL_PHONE:Ljava/lang/String; = "Local Phone Account"

.field private static final INTERNATIONAL_FREE_NUMBER:Ljava/lang/String; = "+8618918910000"

.field private static final TAG:Ljava/lang/String; = "OP09SimServiceExtension"

.field private static sIsRunningNumberCheck:Z


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;->sIsRunningNumberCheck:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/ext/SimServiceExtension;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;->mPluginContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;->sIsRunningNumberCheck:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-boolean p0, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;->sIsRunningNumberCheck:Z

    return p0
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "ExtensionForOP09"

    return-object v0
.end method

.method public importViaReadonlyContact(Landroid/os/Bundle;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "bundle"
    .parameter "cr"
    .parameter "commond"

    .prologue
    .line 52
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "OP09SimServiceExtension"

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension$1;

    invoke-direct {v1, p0, p2}, Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension$1;-><init>(Lcom/mediatek/contacts/plugin/simcontacts/OP09SimServiceExtension;Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method
