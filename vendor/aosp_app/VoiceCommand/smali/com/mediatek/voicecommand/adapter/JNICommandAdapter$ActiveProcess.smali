.class Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
.super Ljava/lang/Object;
.source "JNICommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveProcess"
.end annotation


# instance fields
.field mPid:I

.field mProcessName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    .line 906
    iput p3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    .line 907
    return-void
.end method
