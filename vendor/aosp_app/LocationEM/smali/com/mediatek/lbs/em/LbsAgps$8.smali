.class Lcom/mediatek/lbs/em/LbsAgps$8;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    .line 782
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v2

    .line 783
    .local v2, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    const/16 v9, 0xa

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "22"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "333"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "4444"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "55555"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "666666"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "7777777"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "88888888"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "999999999"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "10000000000"

    aput-object v10, v8, v9

    .line 785
    .local v8, msisdnList:[Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 786
    .local v4, index:I
    packed-switch v4, :pswitch_data_0

    .line 849
    :cond_0
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 788
    :pswitch_0
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "TRIG_SUPL_INIT_UDP"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 791
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "ENABLE"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "ENABLE_RAW_DATA"

    invoke-interface {v9, v10, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 797
    .end local v1           #bundle:Landroid/os/Bundle;
    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 798
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v9, "ENABLE"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 799
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "ENABLE_RAW_DATA"

    invoke-interface {v9, v10, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 805
    .end local v1           #bundle:Landroid/os/Bundle;
    :pswitch_3
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "TRIG_E_SUPL_INIT_ESLP_UDP"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 808
    :pswitch_4
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "TRIG_E_SUPL_INIT_UDP"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 812
    :pswitch_5
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "hugo456"

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    .line 813
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    .line 815
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->startSILR()V

    .line 816
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->startSIPeiodic()V

    .line 817
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->startSIAreaEvent()V

    .line 818
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->stopTriggeredSession()V

    .line 820
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "123"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "456"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "789"

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    .line 821
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->getSI3PartyMsisdn()[Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, list:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v7, v0, v3

    .line 823
    .local v7, msisdn:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSI3PartyMsisdn msisdn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/lbs/em/LbsAgps;->access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 828
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #list:[Ljava/lang/String;
    .end local v7           #msisdn:Ljava/lang/String;
    :pswitch_6
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "hugo456"

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    .line 829
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->getSILRMsisdn()Ljava/lang/String;

    move-result-object v7

    .line 830
    .restart local v7       #msisdn:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSILRMsisdn msisdn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/lbs/em/LbsAgps;->access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    .end local v7           #msisdn:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 837
    :pswitch_8
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :pswitch_9
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 844
    :pswitch_a
    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps$8;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v9

    const-string v10, "1234567890123456789012345678901"

    invoke-interface {v9, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
