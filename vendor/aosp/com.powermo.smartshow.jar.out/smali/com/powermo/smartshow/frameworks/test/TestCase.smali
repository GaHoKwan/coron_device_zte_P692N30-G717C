.class public abstract Lcom/powermo/smartshow/frameworks/test/TestCase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;


# instance fields
.field private a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

.field private b:Z

.field private c:Ljava/lang/Thread;

.field protected e:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

.field protected f:Landroid/content/Context;

.field protected g:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

.field protected h:Lcom/powermo/smartshow/frameworks/test/f;

.field protected i:Ljava/lang/String;

.field protected j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->h:Lcom/powermo/smartshow/frameworks/test/f;

    iput-object p4, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->g:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->b:Z

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->b()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    invoke-interface {v0}, Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;->a()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powermo/smartshow/frameworks/test/g;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/frameworks/test/g;-><init>(Lcom/powermo/smartshow/frameworks/test/TestCase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b()Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->e:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->g:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->e:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    invoke-interface {v0}, Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->b:Z

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->a:Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;

    invoke-interface {v0}, Lcom/powermo/smartshow/frameworks/test/TestCase$TestCaseListener;->c()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/test/TestCase;->b:Z

    return v0
.end method
