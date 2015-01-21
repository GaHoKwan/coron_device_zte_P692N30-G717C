.class public Lcom/powermo/base/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "PowerMo"

    sput-object v0, Lcom/powermo/base/f;->a:Ljava/lang/String;

    const-string v0, "pmservicesjni"

    sput-object v0, Lcom/powermo/base/f;->b:Ljava/lang/String;

    sput-boolean v1, Lcom/powermo/base/f;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/powermo/base/f;->d:Z

    sput-boolean v1, Lcom/powermo/base/f;->e:Z

    sput-boolean v1, Lcom/powermo/base/f;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powermo/base/f;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-boolean v0, Lcom/powermo/base/f;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/powermo/base/f;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/powermo/base/f;->f:Z

    :cond_0
    return-void
.end method
