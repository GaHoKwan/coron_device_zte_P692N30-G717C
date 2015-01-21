.class public final Lcom/mediatek/mock/media/MockMediaRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "MockMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/media/MockMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final MPEG_4_SP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/mediatek/mock/media/MockMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/mediatek/mock/media/MockMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$VideoEncoder;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
