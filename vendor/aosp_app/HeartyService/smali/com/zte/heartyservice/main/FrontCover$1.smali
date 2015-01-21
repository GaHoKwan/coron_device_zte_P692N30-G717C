.class Lcom/zte/heartyservice/main/FrontCover$1;
.super Ljava/lang/Object;
.source "FrontCover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/FrontCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/FrontCover;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/FrontCover;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/main/FrontCover$1;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover$1;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/FrontCover;->startHeartyService()V

    .line 69
    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover$1;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover$1;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    const-class v2, Lcom/zte/heartyservice/main/AgreementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover$1;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/FrontCover;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00fc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
