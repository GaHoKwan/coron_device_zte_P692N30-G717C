.class public Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$Status;
.super Ljava/lang/Object;


# static fields
.field public static final ARGUMENT_ERROR:I = 0x1

.field public static final AUDIO_ERROR:I = 0x8

.field public static final CALLFLOW_ERROR:I = 0x4

.field public static final CONF_ERROR:I = 0x9

.field public static final FILE_ERROR:I = 0x3

.field public static final HANDLE_ERROR:I = 0x6

.field public static final INTERNAL_ERROR:I = 0x7

.field public static final MEMORY_ERROR:I = 0x2

.field public static final OK:I = 0x0

.field public static final OTHER_ERROR:I = 0xa

.field public static final SYSTEMCALL_ERROR:I = 0x5


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$Status;->a:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
