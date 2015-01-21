.class Lcom/powermo/smartshow/frameworks/ah;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/android/server/am/ActivityManagerService;

.field b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field c:Lcom/android/server/wm/WmStub;

.field d:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/ah;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->a:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->d:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/WmStub;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ah;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/WmStub;-><init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Rect;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WmStub;->a(IILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Rect;II)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WmStub;->a(Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method public a()Lcom/android/server/wm/WmStub;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/server/wm/i;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ah;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wm/i;-><init>(Ljava/lang/Object;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WmStub;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WmStub;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WmStub;->a(Z)V

    return-void
.end method

.method public b(Landroid/graphics/Rect;II)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WmStub;->b(Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method public b()Lcom/android/server/wm/IWmSmartShowStub;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ah;->c:Lcom/android/server/wm/WmStub;

    invoke-virtual {v0}, Lcom/android/server/wm/WmStub;->d()Z

    move-result v0

    return v0
.end method
