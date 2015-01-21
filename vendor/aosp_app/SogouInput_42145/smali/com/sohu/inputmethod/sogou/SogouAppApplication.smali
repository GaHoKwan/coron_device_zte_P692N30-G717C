.class public Lcom/sohu/inputmethod/sogou/SogouAppApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    .line 18
    new-instance v0, Lmp;

    invoke-direct {v0, p0}, Lmp;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 19
    return-void
.end method
