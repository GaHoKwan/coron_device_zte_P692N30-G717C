.class Lcom/zte/heartyservice/speedup/RunningAppActivity$2;
.super Ljava/lang/Object;
.source "RunningAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/RunningAppActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 251
    .local v1, viewId:I
    packed-switch v1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->finish()V

    .line 271
    :cond_1
    return-void

    .line 254
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->access$600(Lcom/zte/heartyservice/speedup/RunningAppActivity;)I

    move-result v2

    if-lez v2, :cond_2

    .line 255
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    const-class v3, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/SpeedType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->access$600(Lcom/zte/heartyservice/speedup/RunningAppActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    const v3, 0x7f0a005a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x7f0e021c
        :pswitch_0
    .end packed-switch
.end method
