.class Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
.super Lcom/mediatek/common/mom/PermissionRecord;
.source "PermissionToAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPermissionRecord"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mPkgLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "permissionName"
    .parameter "status"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    .line 372
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method
