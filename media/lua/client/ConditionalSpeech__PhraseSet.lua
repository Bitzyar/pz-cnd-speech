require "ConditionalSpeech_Util"
require "ConditionalSpeech_Core"

--- -=[ Instructions for Contributors ]=- ---
--- Firstly, thank you for stopping in; I hope you enjoy your time here.

--- to add more phrase sets: ConditionalSpeech.Phrases.WORD = {"phrase1", "phrase2"}
--- to generate speech: ConditionalSpeech.generateSpeechFrom("WORD")
--- Moodles automatically search for a phraseset matching their WORD
--- to use phrase set as keywords simply populate phrases with "<WORD>".

--- When Writing New Phrases:
--- Keep them short when you can.
--- Don't captilize anything other than 'I' or proper nouns.
--- Punctuation is fine, but keep in mind all '.' can become '!' - so avoid things like U.S.A. or F.B.I.
--- Avoid swears (as there is dynamic swearing built-in) instead use <SWEAR>.
--- For the moment any \*emotive actions\* have to be the entire phrase (which won't be filtered).

--- For more variety and to avoid bloat from repetative phrases, phrases can be used as Keywords to replace parts of another phrase at random.
--- Format: <WORD> in the phrase. Make sure there is a corresponding ConditionalSpeech.Phrases.WORD phrase-set.
--- When writing new Phrases to be used as keywords: Read through some lines with <WORD> to make sure it sounds correct before adding them in.


--[[ ---unused phrase sets for moods
ConditionalSpeech.Phrases.Angry = nil
ConditionalSpeech.Phrases.Dead = nil
]]--

ConditionalSpeech.Phrases.Drunk = {
	"me siento mareado", "que bien se siente", "necesitaba esto", "no me quejo si tomo otra", "¿habra otra?", "que bueno esta esto"}

ConditionalSpeech.Phrases.HasACold = {
	"tengo la nariz roja", "tengo mocos", "me estoy sintiendo mal", "este resfrio me va a dar problemas",
	"me duele la garganta", "necesito recuperarme", "¿tengo fiebre?"
}

ConditionalSpeech.Phrases.Windchill = {
	"esta ventoso afuera", "hay mucho viento", "este viento me mueve", "esta demasiado ventoso", "parece un tornado",
	"me esta moviendo el viento", "no me sorprenderia un tornado", "el viento ruge"
}

ConditionalSpeech.Phrases.Hyperthermia = {
	"<SWEAR> que calor", "el calor me esta dando sed", "hace tanto calor", "estoy demasiado acalorado",
	"el calor me esta matando", "se esta volviendo insoportable el calor", "no creo lograrlo", "ya no veo nada"
}

ConditionalSpeech.Phrases.Endurance = {
	"tiempo", "necesito un descanso", "*jadeo*", "necesito descansar", "apenas puedo correr", "apenas puedo caminar",
	"voy a pasar a la otra vida", "apenas puedo moverme", "no siento los brazos", "no siento las piernas"
}

ConditionalSpeech.Phrases.Bleeding = {
	"estoy sangrando un poco", "estoy sangrando", "necesito parar el sangrado",
	"me estoy desangrando", "estoy perdiendo mi vida", "voy a morir"
}

ConditionalSpeech.Phrases.FoodEaten = {
	"que rico", "estoy lleno", "mi estomago no da mas", "me siento muy lleno",
	"mi estomago esta por parir", "ya no quiero comer mas", "no puedo ni tomar otro bocado"
}

ConditionalSpeech.Phrases.Injured = {
	"deberia de tratarme pronto", "estoy herido", "eso va a dejar marca", "<SWEAR> necesito un botiquin"
}

ConditionalSpeech.Phrases.Unhappy = {
	"extraño a mi familia", "esto se esta poniendo feo", "¿cuanto tiempo aguantare?", "¿esta es mi vida ahora?",
	"ya no tiene sentido seguir", "no tiene sentido seguir", "¿que clase de vida es esta?", "esto no es vivir",
	"no puede ser tan malo ser un zombie", "¿porque a mi?", "no hay futuro", "mundo cruel", "there's no point"
	
}
ConditionalSpeech.Phrases.Wet = {
	"estoy humedo", "estoy mojado", "estoy bastante mojado", "estoy humedo y bastante", "me voy a enfermar si sigo asi", "estoy como si me hubiera bañado"
}

ConditionalSpeech.Phrases.Sick = {
	"me siento mal", "estoy un poco fuera de juego", "estoy resfriado", "me siento enfermo", "me siento enfermo", "tengo nauseas", "¿tengo fiebre?", "tengo fiebre"
}

ConditionalSpeech.Phrases.HeavyLoad = {
	"*agh*", "esto esta pesado", "esto es un poco mucho", "esto es mucho para mi espalda", "<SWEAR>, estoy cargado", "<SWEAR> mi espalda"
}

ConditionalSpeech.Phrases.Zombie = {-- Dead and Zombie Moodles seemingly only have 1 level -- they may not operate well with intensity argument in generate speech
	"voy a ser uno de ellos", "este es el final", "esto es el fin", "¿porque a mi?", "¿voy a ser uno de ellos?"
}

ConditionalSpeech.Phrases.OnDusk = {
	"esta oscureciendo", "el sol se esconde", "el sol se esta escondiendo"
}

ConditionalSpeech.Phrases.OnDawn = {
	"nuevo dia", "sobrevivi otro dia", "esta amaneciendo", "el sol esta saliendo"
}

ConditionalSpeech.Phrases.GunJammed = {
	"encasquillada", "esta encasquillada", "se encasquillo esta porqueria", "encasquillada"
}

ConditionalSpeech.Phrases.LowAmmo = {
	"me quedo sin balas", "<SWEAR> me estoy quedando sin balas", "necesito recargar", "me quedan pocas balas", "pocas balas"
}

ConditionalSpeech.Phrases.OutOfAmmo = {
	"estoy sin balas", "sin balas", "no mas balas", "<SARCASM> ya no tengo balas", "esta vacio", "no hay mas balas", "sin balas",
	"no hay balas", "<SWEAR> este arma esta vacia", "<SWEAR> sin municion", "<SWEAR> no tengo mas municion", "no hay balas en este arma"
}

ConditionalSpeech.Phrases.Hungry = {
	"me vendria bien un bocado", "*rugido de estomago*", "me vendria bien comer", "necesitaria comer algo",
	"<FOOD> me vendria bien ahora mismo", "tengo que buscar comida", "*ruge el estomago*", "mejor encuentro algo de comer",
	"necesito comida", "me ruge el estomago", "tengo mucha hambre", "quiero comer <FOOD>",
	"quiero comer <FOOD> pero ahora", "*ruge fuerte el estomago*", "tengo tanta hambre que me pongo loco",
	"tiene que haber comida en algun lugar", "tengo tanta hambre", "aghhh tengo hambre", "¿donde carajos puede haber comida?",
	"estoy tan hambriento", "agghh tengo hambre", "me muero de hambre"
}

ConditionalSpeech.Phrases.Thirst = {
	"mi boca esta seca", "*tose*", "necesito algo de tomar", "un sorbo de agua estaria bien",
	"necesito algo de tomar", "deberia de conseguir algo de tomar", "mi boca se siente seca", "me iria bien un galon de agua",
	"deberia de tomar algo", "tengo la boca aspera", "necesito tomar algo pronto", "necesito agua",
	"muero de sed", "tengo sed <SWEAR>"
}

ConditionalSpeech.Phrases.Tired = {
	"*bostezo*", "una siesta no vendria mal", "me siento cansado", "tengo sueño", "quiero dormir la verdad", "*gran bostezo*",
	"deberia de ir a dormir", "necesito dormir pronto", "seria bueno tirarse a la cama", "me estoy durmiendo",
	"estoy cansado.", "*bostezo bastante largo*", "tengo tanto sueño", "que bien me vendria dormir", "me estoy durmiendo ,necesito dormir",
	"apenas puedo ver", "me duermo, me duermo", "cuanto llevo sin dormir", "tengo tanto sueño",
	"debo dormir.", "mis ojos se sienten pesados", "ya no puedo mas, me desmayo de sueño"
}

ConditionalSpeech.Phrases.Bored = {
	"deberia de hacer algo", "me siento aburrido", "*quejido*", "tiene que haber algo que hacer", "bueno, me aburro",
	"aburrido", "que lindo esta el techo", "estoy aburrido <SWEAR>", "*quejido largo*", "estoy tan aburrido.", "aburrido como planta en maceta.",
	"*quejido fuerte*", "enserio necesito hacer algo", "debe de haber algo entretenido para hacer <SWEAR>",
	"cualquier cosa es mejor que mirar el techo", "que aburrimiento <SWEAR>"
}

ConditionalSpeech.Phrases.Stress = {
	"me siento estresado", "necesito relajarme", "*respiracion agitada*", "necesito relajarme", "ugh", "tengo que mirar tv",
	"*respira profundo*", "necesito distraccion", "no puedo mas", "este puto stress", "estoy hervido de stress"
}

ConditionalSpeech.Phrases.Agoraphobic = {
	"respira profundo, respira profundo", "odio esto", "no quiero estar afuera", "que horrible es estar afuera", "que miedo da estar afuera", "quiero estar adentro"
}

ConditionalSpeech.Phrases.FEAR = {
	"¡uh oh!", "¡oh!", "¡ohh!", "¡ah!", "¡ahh!", "¡dios!", "<SWEAR>", "¡ah <SWEAR>!", "¡oh <SWEAR>!", "¡mierda!", "¡dios <SWEAR_adj>!",
	--"¡necesito irme!",
	"tengo miedo", "¡ahhh!",
	--"necesito irme a la mierda de aqui",
	"¡ahh!", "¡porfavor no!", "¡que alguien me ayude!", "¡dios ayuda!", "¡oh dios! ¡ahhh!"
}

ConditionalSpeech.Phrases.Hypothermia = { "esta tan frio", "brrrrr", "*tiembla*" }

ConditionalSpeech.Phrases.Pain = {
	"ouch", "ow", "argh", "eso dolio", "ouch", "ow", "aagghh", "eso duele", "aaaaghhh", "arrgh", "owww",
	"eso me dolio bastante", "arrrgh", "que dolor", "aghh <SWEAR>", "aagghhh", "aaaggghhh", "oh god", "aaghh"
}

ConditionalSpeech.Phrases.Campfire = {"*canta*"}

-- Swears are ranked by intensity
ConditionalSpeech.Phrases.SWEAR = {"mierda", "carajos", "puta madre", "joder", "mierda"}
ConditionalSpeech.Phrases.SWEAR_adj = {"puta", "joder", "mierda", "puta madre"}

-- useful list of plosives for stammering
ConditionalSpeech.Phrases.Plosives = {"f", "F", "p", "P", "t", "T", "k", "K", "b", "B", "d", "D", "g", "G", "s", "S", "m", "M"}

ConditionalSpeech.Phrases.FOOD = {
	"un bocadito", "una pizza completa", "una pizza", "una porcion de pizza", "un pedazo de tarta", "algo rico",
	"una tarta", "un pollo", "unas alitas", "unas hamburguesas de Spiffo", "algo de Spiffo",
	"unas alitas de Jay Chickens", "un hotdog con mayonesa", "cualquier cosa que se coma", "cualquier cosa comestible", "un bocado"
}

ConditionalSpeech.Phrases.SARCASM = {"que bueno", "genial", "fantastico", "lo que me faltaba"}
