.class public Lcom/mediatek/contacts/plugin/OP09ContactListExtension;
.super Lcom/android/contacts/ext/ContactListExtension;
.source "OP09ContactListExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;
    }
.end annotation


# static fields
.field private static final MENU_SIM_STORAGE:I = 0x270f

.field private static final TAG:Ljava/lang/String; = "OP09ContactListExtension"

.field private static mContextHost:Landroid/content/Context;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContextHost:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactListExtension;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/plugin/OP09ContactListExtension;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContextHost:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "menu"
    .parameter "args"
    .parameter "commd"

    .prologue
    const/16 v5, 0x270f

    const/4 v4, 0x0

    .line 54
    const-string v2, "OP09ContactListExtension"

    const-string v3, "addOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "ExtensionForOP09"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 60
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, string:Ljava/lang/String;
    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$1;

    invoke-direct {v3, p0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$1;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactListExtension;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "ExtensionForOP09"

    return-object v0
.end method

.method public registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 40
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    sput-object p1, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContextHost:Landroid/content/Context;

    .line 46
    :try_start_0
    const-string v1, "com.mediatek.op09.plugin"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "OP09ContactListExtension"

    const-string v2, "no com.mediatek.op09.plugin packages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
