.class public Lcom/android/deskclock/AlarmListeners$DigitalClockClickListener;
.super Ljava/lang/Object;
.source "AlarmListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitalClockClickListener"
.end annotation


# instance fields
.field private alarmId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "alarmId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/deskclock/AlarmListeners$DigitalClockClickListener;->alarmId:I

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 35
    return-void
.end method
