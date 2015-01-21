.class public final Lcom/mediatek/mock/media/MockMediaRecorder$HDRecordMode;
.super Ljava/lang/Object;
.source "MockMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/media/MockMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HDRecordMode"
.end annotation


# static fields
.field public static final INDOOR:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final OUTDOOR:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/mock/media/MockMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/mediatek/mock/media/MockMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$HDRecordMode;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
