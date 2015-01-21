.class Lcom/zte/heartyservice/net/NetTrafficActivity$2;
.super Ljava/lang/Object;
.source "NetTrafficActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity;
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
    .line 237
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    sparse-switch p2, :sswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 242
    :sswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #setter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$102(Lcom/zte/heartyservice/net/NetTrafficActivity;I)I

    .line 243
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$200(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    .line 244
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    .line 245
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 246
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0

    .line 250
    :sswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #setter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$102(Lcom/zte/heartyservice/net/NetTrafficActivity;I)I

    .line 251
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$200(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    .line 252
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0

    .line 259
    :sswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #setter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v0, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$102(Lcom/zte/heartyservice/net/NetTrafficActivity;I)I

    .line 260
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$200(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    .line 261
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    .line 262
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0

    .line 267
    :sswitch_3
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #setter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$102(Lcom/zte/heartyservice/net/NetTrafficActivity;I)I

    .line 268
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$200(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    .line 269
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V

    .line 270
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 271
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x7f0e01b7 -> :sswitch_0
        0x7f0e01b8 -> :sswitch_1
        0x7f0e01c4 -> :sswitch_2
        0x7f0e01c5 -> :sswitch_1
        0x7f0e01c6 -> :sswitch_3
    .end sparse-switch
.end method
