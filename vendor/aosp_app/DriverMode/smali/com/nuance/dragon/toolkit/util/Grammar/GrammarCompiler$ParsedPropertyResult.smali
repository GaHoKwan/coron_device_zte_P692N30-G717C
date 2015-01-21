.class Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;
.super Ljava/lang/Object;


# instance fields
.field _name:Ljava/lang/String;

.field _unparsed:Ljava/lang/String;

.field _value:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->this$0:Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_value:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_unparsed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_name:Ljava/lang/String;

    return-object v0
.end method

.method getUnparsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_unparsed:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/Grammar/GrammarCompiler$ParsedPropertyResult;->_value:Ljava/lang/String;

    return-object v0
.end method
