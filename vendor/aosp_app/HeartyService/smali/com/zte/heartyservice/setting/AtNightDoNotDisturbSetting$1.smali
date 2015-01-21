.class Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$1;
.super Ljava/lang/Object;
.source "AtNightDoNotDisturbSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$1;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 101
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$1;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->startWhiteListActivity(Landroid/content/Context;)V

    .line 104
    return-void
.end method
