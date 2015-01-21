.class public final Lcom/mediatek/calendar/extension/ExtConsts$LunarEvent;
.super Ljava/lang/Object;
.source "ExtConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendar/extension/ExtConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LunarEvent"
.end annotation


# static fields
.field public static final IS_LUNAR:Ljava/lang/String; = "isLunar"

.field public static final LUNAR_RRULE:Ljava/lang/String; = "lunarRrule"


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/extension/ExtConsts;


# direct methods
.method public constructor <init>(Lcom/mediatek/calendar/extension/ExtConsts;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/mediatek/calendar/extension/ExtConsts$LunarEvent;->this$0:Lcom/mediatek/calendar/extension/ExtConsts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
