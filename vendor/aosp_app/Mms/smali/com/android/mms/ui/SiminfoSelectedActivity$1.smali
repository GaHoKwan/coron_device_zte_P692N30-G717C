.class Lcom/android/mms/ui/SiminfoSelectedActivity$1;
.super Ljava/lang/Object;
.source "SiminfoSelectedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SiminfoSelectedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SiminfoSelectedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 112
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, mindex:I
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    #getter for: Lcom/android/mms/ui/SiminfoSelectedActivity;->listview:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/ui/SiminfoSelectedActivity;->access$000(Lcom/android/mms/ui/SiminfoSelectedActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 114
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "simcardkey"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "0"

    if-ne v5, v6, :cond_0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v2, 0x0

    .line 134
    :goto_0
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setSimCardInfo(I)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, mIntent:Landroid/content/Intent;
    const-string v5, "sim_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 139
    return-void

    .line 117
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    const-string v5, "simcardkey"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "1"

    if-ne v5, v6, :cond_2

    .line 118
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v3

    .line 119
    .local v3, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v3, :cond_1

    .line 120
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    .end local v3           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v3

    .line 127
    .restart local v3       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v3, :cond_3

    .line 128
    iget-object v5, p0, Lcom/android/mms/ui/SiminfoSelectedActivity$1;->this$0:Lcom/android/mms/ui/SiminfoSelectedActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 130
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    const/4 v2, 0x2

    goto :goto_0
.end method
