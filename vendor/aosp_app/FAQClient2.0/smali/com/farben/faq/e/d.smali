.class public Lcom/farben/faq/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/farben/faq/e/d;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/e/d;->a:Lcom/farben/faq/e/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/e/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/farben/faq/e/d;
    .locals 1

    sget-object v0, Lcom/farben/faq/e/d;->a:Lcom/farben/faq/e/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/farben/faq/e/d;

    invoke-direct {v0}, Lcom/farben/faq/e/d;-><init>()V

    sput-object v0, Lcom/farben/faq/e/d;->a:Lcom/farben/faq/e/d;

    :cond_0
    sget-object v0, Lcom/farben/faq/e/d;->a:Lcom/farben/faq/e/d;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/e/d;->b:Landroid/content/Context;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7a0b\u5e8f\u53d1\u751f\u5f02\u5e38:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Exception;

    const-class v1, Lcom/farben/faq/e/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/e/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/farben/faq/common/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/farben/faq/common/a;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
