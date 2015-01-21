.class public abstract Lcom/mediatek/apst/target/util/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field private static final ENABLE_D:Z = true

.field private static final ENABLE_E:Z = true

.field private static final ENABLE_I:Z = true

.field private static final ENABLE_LOG:Z = true

.field private static final ENABLE_V:Z = true

.field private static final ENABLE_W:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "APST"

.field private static sStartTime:J

.field private static sStopTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 264
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 252
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 227
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 239
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    return-void
.end method

.method public static logD(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 245
    const-string v0, "APST"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    return-void
.end method

.method public static logD([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 258
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public static logD([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 233
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 132
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 120
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 95
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 107
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-void
.end method

.method public static logE(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 113
    const-string v0, "APST"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-void
.end method

.method public static logE([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 126
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public static logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 101
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 220
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 208
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 183
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 195
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    return-void
.end method

.method public static logI(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 201
    const-string v0, "APST"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    return-void
.end method

.method public static logI([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 214
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public static logI([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 189
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return-void
.end method

.method public static logStartTime(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/apst/target/util/Debugger;->sStartTime:J

    .line 79
    const-string v0, "APST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mediatek/apst/target/util/Debugger;->sStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static logStopTime(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/apst/target/util/Debugger;->sStopTime:J

    .line 86
    const-string v0, "APST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mediatek/apst/target/util/Debugger;->sStopTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "APST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mediatek/apst/target/util/Debugger;->sStopTime:J

    sget-wide v4, Lcom/mediatek/apst/target/util/Debugger;->sStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static logV(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 308
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 296
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 271
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 283
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return-void
.end method

.method public static logV(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 289
    const-string v0, "APST"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    return-void
.end method

.method public static logV([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 302
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public static logV([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 277
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 176
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 164
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 139
    const-string v0, "APST"

    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 151
    const-string v0, "APST"

    invoke-static {p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return-void
.end method

.method public static logW(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 157
    const-string v0, "APST"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    return-void
.end method

.method public static logW([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 170
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public static logW([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "args"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 145
    const-string v0, "APST"

    invoke-static {p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return-void
.end method

.method protected static mkLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/mediatek/apst/target/util/Debugger;->mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "className"
    .parameter "methodName"
    .parameter "args"
    .parameter "msg"

    .prologue
    const/16 v4, 0x20

    .line 314
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v1, strLog:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 316
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    :cond_0
    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    if-eqz p2, :cond_3

    .line 321
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 323
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 324
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 325
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    .end local v0           #i:I
    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    :cond_4
    if-eqz p3, :cond_5

    .line 333
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static mkLog([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "args"
    .parameter "msg"

    .prologue
    .line 340
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 342
    .local v4, stack:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 343
    .local v2, ix:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 344
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.mediatek.apst.target.util.Debugger"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    :cond_0
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 352
    aget-object v1, v4, v2

    .line 353
    .local v1, frame:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, className:Ljava/lang/String;
    const-string v5, "com.mediatek.apst.target.util.Debugger"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 356
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 357
    .local v3, lastSegment:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p0, p1}, Lcom/mediatek/apst/target/util/Debugger;->mkLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #frame:Ljava/lang/StackTraceElement;
    .end local v3           #lastSegment:I
    :goto_2
    return-object v5

    .line 348
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #frame:Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 361
    goto :goto_1

    .line 362
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #frame:Ljava/lang/StackTraceElement;
    :cond_3
    const-string v5, "Debugger get stack trace error!"

    goto :goto_2
.end method
