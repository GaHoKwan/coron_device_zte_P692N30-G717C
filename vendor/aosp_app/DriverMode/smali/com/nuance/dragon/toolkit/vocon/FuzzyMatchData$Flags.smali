.class public Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$Flags;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVATABLE:I = 0x2

.field public static final ARRAY:I = 0x8

.field public static final INTEGER:I = 0x4

.field public static final RESULTACCUMULATE:I = 0x10

.field public static final SPEAKABLE:I = 0x1


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$Flags;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
