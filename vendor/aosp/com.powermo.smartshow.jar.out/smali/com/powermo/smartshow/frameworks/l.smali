.class Lcom/powermo/smartshow/frameworks/l;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/android/server/am/ActivityManagerService;

.field b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field c:Lcom/android/server/am/c;

.field d:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/l;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->a:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->d:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/am/c;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/l;->a:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/l;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/l;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ah;->a()Lcom/android/server/wm/WmStub;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/c;-><init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WmStub;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->a:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->generateContextId()I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->a(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/server/am/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(Lcom/android/server/am/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(I)V

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->a(IIZ)V

    return-void
.end method

.method public a(ZILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/c;->a(ZILjava/lang/Object;)V

    return-void
.end method

.method a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->a(II)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->b(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/server/am/IAmSmartShowStub;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0}, Lcom/android/server/am/c;->a()Lcom/android/server/am/IAmSmartShowStub;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/android/server/am/a;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method b(II)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->b(II)Z

    move-result v0

    return v0
.end method

.method final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->c(I)I

    move-result v0

    return v0
.end method

.method c(II)I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/c;->a(III)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0}, Lcom/android/server/am/c;->c()V

    return-void
.end method

.method public c(Lcom/android/server/am/a;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->b(Lcom/android/server/am/a;)V

    return-void
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->e(I)I

    move-result v0

    return v0
.end method

.method d(II)I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/c;->a(III)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0}, Lcom/android/server/am/c;->e()V

    return-void
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->f(I)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0}, Lcom/android/server/am/c;->g()V

    return-void
.end method

.method public e(II)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/c;->g(II)V

    return-void
.end method

.method public final f(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->g(I)I

    move-result v0

    return v0
.end method

.method final g(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->j(I)I

    move-result v0

    return v0
.end method

.method public h(I)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->l(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method i(I)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->m(I)Z

    move-result v0

    return v0
.end method

.method public final j(I)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->n(I)Z

    move-result v0

    return v0
.end method

.method k(I)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->o(I)Z

    move-result v0

    return v0
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->p(I)I

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->q(I)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/l;->c:Lcom/android/server/am/c;

    invoke-virtual {v0, p1}, Lcom/android/server/am/c;->r(I)V

    return-void
.end method
