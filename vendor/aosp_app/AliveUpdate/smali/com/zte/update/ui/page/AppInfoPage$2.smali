.class Lcom/zte/update/ui/page/AppInfoPage$2;
.super Lcom/zte/update/ui/pop/DataNetworkAlertPop;
.source "AppInfoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/page/AppInfoPage;->showDataNetworkAlertPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoPage$2;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-direct {p0, p2}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage$2;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v0}, Lcom/zte/update/ui/page/AppInfoPage;->startCheck()V

    .line 108
    return-void
.end method
