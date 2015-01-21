.class Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PermissionLogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAction:Landroid/widget/TextView;

.field mPackageIcon:Landroid/widget/ImageView;

.field mPackageName:Landroid/widget/TextView;

.field mPermission:Landroid/widget/TextView;

.field mTimestamp:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->this$1:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
