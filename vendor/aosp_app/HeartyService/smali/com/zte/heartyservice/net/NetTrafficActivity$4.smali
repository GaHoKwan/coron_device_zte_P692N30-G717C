.class Lcom/zte/heartyservice/net/NetTrafficActivity$4;
.super Ljava/lang/Object;
.source "NetTrafficActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$4;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "title"

    const v2, 0x7f0a00f6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    const-string v1, "msg"

    const v2, 0x7f0a0582

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$4;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->showAdjDialog()V
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$500(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    .line 329
    return-void
.end method
