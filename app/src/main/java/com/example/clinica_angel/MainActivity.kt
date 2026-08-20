package com.example.clinica_angel

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.dimensionResource
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.clinica_angel.ui.theme.Clinica_AngelTheme


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            /**
            Column (
                modifier = Modifier
                    .fillMaxSize() //para que ocupe completamente el anhco
                    .padding(top = dimensionResource(id = R.dimen.espacio_general)),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text(
                    text = stringResource(id = R.string.titulo_main),
                    style = TextStyle(
                        fontSize = 38.sp,
                        fontWeight = FontWeight.Bold,
                        color =  Color(0xFF4d249e)
                        )
                )
            }
            */
            Column (
                modifier = Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center
            ){

                Text(
                    text = stringResource(id = R.string.titulo_main),
                    style = TextStyle(
                        fontSize = 40.sp,
                        fontWeight = FontWeight.Bold,
                        color =  Color(0xFF4d249e)
                    ),
                    modifier = Modifier
                        .padding(bottom = dimensionResource(id = R.dimen.espacio_general))
                )

                Image(
                    painter = painterResource(id = R.drawable.logo_main),
                    contentDescription = stringResource(id = R.string.logo_clinica_angel),
                    modifier = Modifier
                        .size(width = 300.dp, height = 300.dp)
                        .padding(bottom = dimensionResource(id = R.dimen.espacio_general))
                ) //le da espacio en la parte inferior


                Button(
                    onClick = {
                    //startActivity(Intent(this@MainActivity,IniciarActivity::class.java))
                    },
                    modifier = Modifier
                        .size(width = 300.dp, height = 70.dp) // Ajusta el padding para agrandar el botón

                ) {
                    Text(text = "INICIAR",
                        style = TextStyle(
                            fontSize = 25.sp,
                            fontWeight = FontWeight.Bold
                        )
                    )
                }

            }

            Box(modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.BottomCenter
            ){
                Text(text = stringResource(id = R.string.derechos),
                    modifier = Modifier.padding(bottom = dimensionResource(id = R.dimen.espacio_general)))
            }
        }
    }
}
