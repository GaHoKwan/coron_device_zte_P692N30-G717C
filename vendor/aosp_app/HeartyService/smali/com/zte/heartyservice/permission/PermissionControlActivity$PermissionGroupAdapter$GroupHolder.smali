.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupHolder"
.end annotation


# instance fields
.field des:Landroid/widget/TextView;

.field expandIcon:Landroid/widget/ImageView;

.field permission:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
