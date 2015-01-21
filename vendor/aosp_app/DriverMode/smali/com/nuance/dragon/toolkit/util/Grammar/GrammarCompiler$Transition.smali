.class Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$Transition;
.super Ljava/lang/Object;


# instance fields
.field name:Ljava/lang/String;

.field penalty:I

.field final synthetic this$0:Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$Transition;->this$0:Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$Transition;->name:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$Transition;->penalty:I

    return-void
.end method
