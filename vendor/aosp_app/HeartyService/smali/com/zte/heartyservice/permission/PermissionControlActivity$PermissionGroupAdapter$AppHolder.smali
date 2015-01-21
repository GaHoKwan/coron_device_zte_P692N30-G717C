.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

.field appName:Landroid/widget/TextView;

.field switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
