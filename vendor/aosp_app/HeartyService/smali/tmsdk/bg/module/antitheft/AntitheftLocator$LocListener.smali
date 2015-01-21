.class public Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;
.super Ltmsdkobf/gp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/antitheft/AntitheftLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocListener"
.end annotation


# instance fields
.field final synthetic ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftLocator;IIII)V
    .locals 0
    .parameter
    .parameter "reqType"
    .parameter "reqGeoType"
    .parameter "reqLevel"
    .parameter "reqDelay"

    .prologue
    .line 98
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    .line 99
    invoke-direct {p0, p2, p3, p4, p5}, Ltmsdkobf/gp;-><init>(IIII)V

    .line 100
    return-void
.end method


# virtual methods
.method public onLocationDataUpdate([B)V
    .locals 0
    .parameter "locData"

    .prologue
    .line 176
    return-void
.end method

.method public onLocationUpdate(Ltmsdkobf/gr;)V
    .locals 12
    .parameter "locRes"

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    .line 104
    const-string v4, "AntitheftLocator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLocationUpdate Longitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Ltmsdkobf/gr;->nU:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Latitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Ltmsdkobf/gr;->nT:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Accuracy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Ltmsdkobf/gr;->nW:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " locRes.ErrorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Ltmsdkobf/gr;->oh:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget v4, p1, Ltmsdkobf/gr;->oh:I

    if-eqz v4, :cond_3

    .line 107
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 108
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;J)J

    .line 111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v5}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v3, v3, v10

    if-lez v3, :cond_1

    .line 112
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3, p1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ltmsdkobf/gr;)V

    .line 113
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V

    .line 114
    const-string v3, "AntitheftLocator"

    const-string v4, "locating error timeout."

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_1
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    move-result-object v3

    invoke-interface {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;->getLocationFailed()V

    .line 169
    :cond_2
    :goto_0
    return-void

    .line 119
    :cond_3
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    const-wide/16 v5, -0x1

    invoke-static {v4, v5, v6}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;J)J

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, isAccuracy:Z
    iget-wide v0, p1, Ltmsdkobf/gr;->nW:D

    .line 122
    .local v0, accuracy:D
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->d(Ltmsdk/bg/module/antitheft/AntitheftLocator;)D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_4

    .line 123
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->d(Ltmsdk/bg/module/antitheft/AntitheftLocator;)D

    move-result-wide v4

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_5

    move v2, v3

    .line 124
    :goto_1
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4, p1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ltmsdkobf/gr;)V

    .line 126
    :cond_4
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->e(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 127
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;->onLocationUpdate(Ltmsdkobf/gr;Z)V

    .line 128
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v4, v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Z)Z

    .line 129
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3, p1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ltmsdkobf/gr;)Ltmsdkobf/gr;

    .line 130
    const-string v3, "AntitheftLocator"

    const-string v4, "FirstLocationReport()"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    if-eqz v2, :cond_6

    .line 132
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V

    .line 133
    const-string v3, "AntitheftLocator"

    const-string v4, "stopLocate and return"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 137
    :cond_6
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->e(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->d(Ltmsdk/bg/module/antitheft/AntitheftLocator;)D

    move-result-wide v3

    cmpl-double v3, v3, v8

    if-eqz v3, :cond_9

    .line 138
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->f(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ljava/util/Timer;

    move-result-object v3

    if-nez v3, :cond_7

    .line 139
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ljava/util/Timer;)Ljava/util/Timer;

    .line 140
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->f(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;

    invoke-direct {v4, p0}, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;-><init>(Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;)V

    invoke-virtual {v3, v4, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 154
    const-string v3, "AntitheftLocator"

    const-string v4, "start mAccurateLocateTOTimer"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_7
    iget v3, p1, Ltmsdkobf/gr;->oh:I

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 157
    const-string v3, "AntitheftLocator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAccuracy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " report"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;->onLocationUpdate(Ltmsdkobf/gr;Z)V

    .line 159
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->f(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 160
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->f(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 161
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ljava/util/Timer;)Ljava/util/Timer;

    .line 163
    :cond_8
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V

    .line 166
    :cond_9
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->d(Ltmsdk/bg/module/antitheft/AntitheftLocator;)D

    move-result-wide v3

    cmpl-double v3, v3, v8

    if-nez v3, :cond_2

    .line 167
    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V

    goto/16 :goto_0
.end method

.method public onStatusUpdate(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 203
    return-void
.end method
