.class public Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionItem"
.end annotation


# instance fields
.field private mPermissionCategory:I

.field private packageName:Ljava/lang/String;

.field private permissionType:I

.field private pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

.field private utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "packageName"
    .parameter "mPermissionCategory"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->pm:Landroid/content/pm/PackageManager;

    .line 84
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;

    .line 85
    iput p4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I

    .line 86
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-virtual {v0, p4, p3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPermissonType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    return v0
.end method

.method public setPermissonType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 78
    iput p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->permissionType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 80
    return-void
.end method
