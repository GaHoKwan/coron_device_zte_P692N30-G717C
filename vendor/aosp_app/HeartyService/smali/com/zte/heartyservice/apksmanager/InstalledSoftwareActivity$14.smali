.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$14;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->changeCustomView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$14;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 961
    const-string v0, "InstalledSoftwareActivity"

    const-string v1, "liuji debug changeCustomView onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$14;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 963
    return-void
.end method
