.class final Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;
.super Ljava/lang/Object;
.source "VComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vcalendar/component/VComponentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserState"
.end annotation


# instance fields
.field public mIndex:I

.field public mLine:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/vcalendar/component/VComponentBuilder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$ParserState;-><init>()V

    return-void
.end method
