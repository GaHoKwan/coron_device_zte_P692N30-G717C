.class Lcom/mediatek/security/ui/AppsFragment$AppInfo;
.super Ljava/lang/Object;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mAppPermSize:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/security/ui/AppsFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/AppsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppPermSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppPermSize:Ljava/lang/String;

    return-object p1
.end method
