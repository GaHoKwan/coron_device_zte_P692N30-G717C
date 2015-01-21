.class Lcom/powermo/smartshow/frameworks/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/y;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/y;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MODE_CHANGE:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    return-void
.end method
