.class Lcom/zte/update/ui/page/AppInfoItem$1;
.super Ljava/lang/Object;
.source "AppInfoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/page/AppInfoItem;->initItemListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoItem;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoItem;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoItem$1;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem$1;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    iget-object v0, v0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->startAppInfoActivity(Ljava/lang/Object;)V

    .line 382
    return-void
.end method
