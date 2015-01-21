.class Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field des:Landroid/widget/TextView;

.field expandIcon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
