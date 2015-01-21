.class Ltmsdk/common/module/optimize/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/optimize/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic zU:Ltmsdk/common/module/optimize/b;

.field final zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field zW:Z

.field zX:Z


# direct methods
.method constructor <init>(Ltmsdk/common/module/optimize/b;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter
    .parameter "_info"

    .prologue
    .line 694
    iput-object p1, p0, Ltmsdk/common/module/optimize/b$a;->zU:Ltmsdk/common/module/optimize/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Ltmsdk/common/module/optimize/b$a;->zV:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 696
    return-void
.end method
