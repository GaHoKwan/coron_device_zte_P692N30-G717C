.class Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionAskHolder"
.end annotation


# instance fields
.field choose:Landroid/widget/TextView;

.field chooseBtn:Landroid/widget/ImageView;

.field permName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
