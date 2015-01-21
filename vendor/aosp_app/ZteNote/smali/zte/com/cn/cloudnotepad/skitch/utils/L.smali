.class public Lzte/com/cn/cloudnotepad/skitch/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "msg"

    .prologue
    .line 15
    sget-boolean v0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "msg"

    .prologue
    .line 22
    sget-boolean v0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "object"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 29
    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 31
    .local v0, strWriter:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 34
    .end local v0           #strWriter:Ljava/io/StringWriter;
    :cond_0
    sget-boolean v1, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    if-eqz v1, :cond_1

    .line 35
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "object"
    .parameter "tr"

    .prologue
    .line 41
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method private static getTagName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 47
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 48
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 50
    .end local v0           #str:Ljava/lang/String;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "msg"

    .prologue
    .line 57
    sget-boolean v0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "isDeubg"

    .prologue
    .line 64
    sput-boolean p0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "msg"

    .prologue
    .line 74
    sget-boolean v0, Lzte/com/cn/cloudnotepad/skitch/utils/L;->sDebug:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method
