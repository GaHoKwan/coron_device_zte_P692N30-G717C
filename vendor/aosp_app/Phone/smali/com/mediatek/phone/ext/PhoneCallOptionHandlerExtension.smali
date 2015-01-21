.class public Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
.super Ljava/lang/Object;
.source "PhoneCallOptionHandlerExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z
    .locals 1
    .parameter
    .parameter "activityContext"
    .parameter "applicationContext"
    .parameter "intent"
    .parameter "resultHandler"
    .parameter "cellConnMgr"
    .parameter "telephonyInterface"
    .parameter "isMultipleSim"
    .parameter "is3GSwitchSupport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/calloption/CallOptionBaseHandler;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;",
            "Lcom/mediatek/CellConnService/CellConnMgr;",
            "Lcom/android/internal/telephony/ITelephony;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, callOptionHandlerList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/mediatek/calloption/CallOptionBaseHandler;>;"
    const/4 v0, 0x0

    return v0
.end method
