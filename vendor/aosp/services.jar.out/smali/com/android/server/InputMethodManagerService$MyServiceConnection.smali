.class Lcom/android/server/InputMethodManagerService$MyServiceConnection;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private final mParentIMMS:Lcom/android/server/InputMethodManagerService;

.field private final mSid:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;ILcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter
    .parameter "sid"
    .parameter "imms"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p2, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mSid:I

    .line 270
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    .line 271
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mSid:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/InputMethodManagerService;->onServiceConnected(ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 275
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/InputMethodManagerService$MyServiceConnection;->mSid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/InputMethodManagerService;->onServiceDisconnected(ILandroid/content/ComponentName;)V

    .line 279
    return-void
.end method
