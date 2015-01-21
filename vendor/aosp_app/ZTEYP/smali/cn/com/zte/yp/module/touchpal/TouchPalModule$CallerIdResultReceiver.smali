.class public Lcn/com/zte/yp/module/touchpal/TouchPalModule$CallerIdResultReceiver;
.super Ljava/lang/Object;
.source "TouchPalModule.java"

# interfaces
.implements Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/module/touchpal/TouchPalModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerIdResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/module/touchpal/TouchPalModule;


# direct methods
.method public constructor <init>(Lcn/com/zte/yp/module/touchpal/TouchPalModule;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcn/com/zte/yp/module/touchpal/TouchPalModule$CallerIdResultReceiver;->this$0:Lcn/com/zte/yp/module/touchpal/TouchPalModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerIdResultReceiver.onReceive. intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 116
    return-void
.end method
